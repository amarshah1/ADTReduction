
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
(assert (not (= l3 l2)) )
(assert (= l2 l2) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l1 l3) (is-Cons Nil) (= l1 l1)) )
(assert (or (= l3 Nil) (= l2 l3) (= l0 Nil)) )
(check-sat)
