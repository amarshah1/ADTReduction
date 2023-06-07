
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
(assert (is-Cons l3) )
(assert (= l3 l3) )
(assert (not (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons l2) (= l0 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l2 l2) (= l2 l1) (= l2 l1) (= l1 Nil)) )
(check-sat)
