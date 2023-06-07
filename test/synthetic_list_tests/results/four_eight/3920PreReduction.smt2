
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
(assert (not (= l3 l0)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l0 l3) (= l1 l1)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l1 Nil) (= l3 l0)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l1 l3) (= l2 Nil) (= l2 Nil)) )
(assert (is-Cons l0) )
(assert (or (= l0 l3) (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
