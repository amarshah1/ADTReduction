
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
(assert (or (= l2 l1) (is-Cons Nil) (= l1 l1) (= l2 Nil)) )
(assert (and (= l0 Nil) (= l3 l1)) )
(assert (= l2 l3) )
(assert (= l1 Nil) )
(assert (and (= l1 l3) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l3 Nil) (= l0 l1) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (= l1 l2) )
(check-sat)
