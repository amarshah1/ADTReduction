
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
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l2 l3) (is-Cons l1) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l3 l2) (is-Cons Nil) (is-Cons l1)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l3) )
(check-sat)
