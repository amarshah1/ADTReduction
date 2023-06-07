
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l2 l3) (= l0 l1) (= l2 Nil)) )
(assert (or (= l0 l2) (= l3 Nil)) )
(assert (or (= l3 l3) (= l0 l0) (is-Cons Nil) (= l1 l2)) )
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l1 Nil)) )
(assert (not (= l3 l2)) )
(check-sat)