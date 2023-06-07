
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
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l2 l2) )
(assert (or (= l1 l2) (= l0 l3) (= l3 l0) (= l3 Nil)) )
(assert (not (= l3 l1)) )
(assert (and (= l1 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
